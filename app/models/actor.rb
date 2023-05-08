class Actor < ApplicationRecord
  belongs_to :cinema, optional: true
  has_and_belongs_to_many :languages
  has_many :remuneration_histories
  has_many :assistants, as: :assistable
  include Validatable
  after_initialize do
   puts "Record Instantiated"
 end
  after_find do
    puts "Record Found"
  end
  after_touch do
    puts "You have touched the record"
  end
  before_validation do
    puts "Before Validation"
  end
  after_validation do
    puts "After Validation"
  end
  before_save :normalize_name
  before_create :capitalize_name
  after_save do
    puts "Record Saved"
  end
  after_commit do
    puts  "Committed Successfully"
  end


  private
    def normalize_name
      self.name = name.downcase
    end
    def capitalize_name
      self.name = name.capitalize
    end

end
