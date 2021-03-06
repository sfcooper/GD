class Distillery < ApplicationRecord

    has_many :gins

    #validations should also be tested in rspec
    validates :name, presence: true
    validates :snippet, presence: true
    validates :description, presence: true

    #allows for human/seo friendly URLs. Takes the name field and writes to the slug field  
    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]


    private
    def should_generate_new_friendly_id?
    slug.nil? || name_changed?
    end
end
