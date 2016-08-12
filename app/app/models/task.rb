class Task
  include Mongoid::Document
  include ActiveModel::Validations

  field :name, type: String
  field :content, type: String
  field :status, default: '0'

  validates :name, presence: true
end
