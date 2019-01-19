class Gin < ApplicationRecord

    has_many :gin_botanicals
    has_many :botanicals, through: :gin_botanicals
    belongs_to :distillery

    validates :name, presence: true
    validates :snippet, presence: true

      #allows for human/seo friendly URLs. Takes the name field and writes to the slug field  
      extend FriendlyId
      friendly_id :name, use: [:slugged, :finders]
  
  
      private
      def should_generate_new_friendly_id?
        slug.nil? || name_changed?
      end
end
