class Task
  include Mongoid::Document
  include Mongoid::DataTable
  include ActiveModel::Validations

  field :name, type: String
  field :content, type: String
  field :status, default: '0'

  validates :name, presence: true

  ## data_table ##
  data_table_options.merge!({
                                :fields => %w(name content status),
                                :searchable => %w(name content),
                                :dataset => lambda do |task|
                                  {
                                      0 => "<%= link_to(task.name, task) %>",
                                      1 => task.content,
                                      2 => task.status
                                  }
                                end
                            })
end
