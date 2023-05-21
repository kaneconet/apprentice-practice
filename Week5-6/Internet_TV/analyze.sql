-- よく見られているエピソードを知りたいです。エピソード視聴数トップ3のエピソードタイトルと視聴数を取得
SELECT title, count
FROM Episodes
JOIN ViewCounts ON Episodes.id = ViewCounts.episode_id
ORDER BY count DESC
LIMIT 3;

-- エピソード視聴数トップ3の番組タイトル、シーズン数、エピソード数、エピソードタイトル、視聴数を取得
SELECT Programs.name, Seasons.season_number, COUNT(Episodes.id), Episodes.title, ViewCounts.count
FROM Programs
JOIN Seasons ON Programs.id = Seasons.program_id
JOIN Episodes ON Seasons.id = Episodes.season_id
JOIN ViewCounts ON Episodes.id = ViewCounts.episode_id
GROUP BY Programs.id, Episodes.id
ORDER BY ViewCounts.count DESC
LIMIT 3;

-- 本日放送される全ての番組に対して、チャンネル名、放送開始時刻(日付+時間)、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を取得
SELECT Channels.name, Slots.start_time, Slots.end_time, Seasons.season_number, COUNT(Episodes.id), Episodes.title, Episodes.description
FROM Channels
JOIN Slots ON Channels.id = Slots.channel_id
JOIN Episodes ON Slots.episode_id = Episodes.id
JOIN Seasons ON Episodes.season_id = Seasons.id
WHERE DATE(Slots.start_time) = CURDATE()
GROUP BY Slots.id
ORDER BY Slots.start_time ASC;
-- 本日のデータを取得する場合 CURDATE() を使用

-- 本日から一週間分、何日の何時から何の番組が放送されるのかを知りたい
SELECT Channels.name, Slots.start_time, Slots.end_time, Seasons.season_number, COUNT(Episodes.id), Episodes.title, Episodes.description
FROM Channels
JOIN Slots ON Channels.id = Slots.channel_id
JOIN Episodes ON Slots.episode_id = Episodes.id
JOIN Seasons ON Episodes.season_id = Seasons.id
WHERE Channels.name = 'ドラマ' AND DATE(Slots.start_time) BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 1 WEEK)
GROUP BY Slots.id
ORDER BY Slots.start_time ASC;
