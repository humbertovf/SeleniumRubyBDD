# frozen_string_literal: true

class Data
  def readRecordFile
    data_record = YAML.load(File.read('C:\Users\hugarcia\RubymineProjects\WatirRuby\features\data\record.yaml'))
    return data_record
  end
end
