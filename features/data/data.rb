# frozen_string_literal: true

class Data
  def readRecordFile(fileName)
    data_record = YAML.load(File.read("C:/Users/hugarcia/RubymineProjects/WatirRuby/features/data/#{fileName}.yaml"))
    return data_record
  end
end
