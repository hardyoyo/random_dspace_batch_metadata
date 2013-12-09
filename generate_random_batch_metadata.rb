#!/usr/bin/env ruby

# generates random metadata, for use in batch importing to DSpace. Helpful for
# quickly populating a developement instance of DSpace, so you can test indexing
# and interface stuff like results paging. Besides, who doesn't like random
# metadata?


# header
# id, collection, dc.creator, dc.date.created, dc.date.issued,
# dc.description.abastract, dc.language, dc.rights, dc.subject, dc.title,
# dc.type
#
# static fields

totalRows = 100

dc_language = 'en'
dc_rights = ''
dc_subject = ''
dc_type = 'text'
id = '+'
collection = '10673/2'

require 'random_data'
require 'faker'
require 'csv'
require 'facets/string/titlecase'

class String
    def titleize
          split(/(\W)/).map(&:capitalize).join
    end
end

connections = [" of the ", " in the ", " in ", " of "]

CSV.open("random_metadata.csv", "w") do |csv|
  csv << ['id', 'collection', 'dc.creator', 'dc.date.created', 'dc.date.issued', 'dc.description.abstract', 'dc.language', 'dc.rights', 'dc.subject', 'dc.title', 'dc.type']

  for i in (1..totalRows)
    dc_creator = "#{Random.lastname}, #{Random.firstname} #{Random.initial}"
    dc_title = "#{Faker::Company.catch_phrase}".titleize + connections[rand(connections.size)] + "#{Faker::Company.catch_phrase}".titleize
    dc_date_created = "#{Random.date}"
    dc_date_issued = "today"
    dc_description_abstract = "#{Random.paragraphs(1)}".chomp!.chomp!

    csv << [id, collection, dc_creator, dc_date_created, dc_date_issued, dc_description_abstract, dc_language, dc_rights, dc_subject, dc_title, dc_type]

  end
end
exit 0
