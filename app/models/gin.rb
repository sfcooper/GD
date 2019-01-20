class Gin < ApplicationRecord

    has_many :gin_botanicals
    has_many :botanicals, through: :gin_botanicals
    belongs_to :distillery

    validates :name, presence: true
    validates :snippet, presence: true

    #enables model for punching_bag used for trending
    acts_as_punchable

   #enables item for upload to ActiveStorage 
    has_one_attached :image

  # using searchkick for eleasticsearch
    searchkick text_start: [:name]



    def search_data
      {
        name: name,
        description: description,
        distillery: distillery,
        botanicals: botanicals.map(&:name)
        
      }
    end

      #allows for human/seo friendly URLs. Takes the name field and writes to the slug field  
      extend FriendlyId
      friendly_id :name, use: [:slugged, :finders]
  
  
      private
      def should_generate_new_friendly_id?
        slug.nil? || name_changed?
      end
end
