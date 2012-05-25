#/app/models/contact_form.rb ＃ 聯絡表單的寫法
class ContactForm
    include ActiveModel::Validations
    include ActiveModel::Conversion  #<= <% form_for @contact_form

    attr_accessor :name, :email, :body
    validates_presence_of :name, :email, :body

    def initialize(attributes = {})
        attributes.each do | name, value |
            send("#{name}=", value)
        end
    end

    def persisted?
        false
    end
end