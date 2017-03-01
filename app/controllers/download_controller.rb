require 'csv'

class DownloadController < ApplicationController
  def create
    csv =""
    10.times.collect do |i|
      csv << ::CSV.generate_line(['test', 'test2', "#{i} Test"])
    end

    # send_data csv, filename: 'test.csv'
  end

  def generated_csv
    csv =""
    10.times.collect { |i| csv << ::CSV.generate_line(['test', 'test2', "#{i} Test"]) }

    send_data csv, filename: 'test.csv'
  end
end