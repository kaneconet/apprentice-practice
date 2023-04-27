require 'find'

def extract_study_time(file)
  found_study_time = false
  File.open(file, "r") do |f|
    f.each_line do |line|
      if found_study_time
        return line.chomp.to_i
      end

      found_study_time = line.start_with?("## 学習時間")
    end
  end
  return 0
end

def process_files_in_directory(directory)
  total_study_time = 0
  Find.find(directory) do |file|
    next unless file.end_with?(".md")
    study_time = extract_study_time(file)
    total_study_time += study_time
  end
  total_study_time
end

directory = "Daily_Report" # ここに検索するディレクトリのパスを入れてください。
total_study_time = process_files_in_directory(directory)
puts "合計学習時間: #{total_study_time}時間"
