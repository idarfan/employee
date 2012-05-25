#/app/controllers/contact_us_controller.rb （重新描繪的捷徑寫法，使用轉向提示語法）
class ContactUsController < ApplicationController
    
    def new
        @contact_form = ContactForm.new
    end

    def send_email
        @contact_form = ContactForm.new(params[:contact_form])

        if @contact_form.valid?
            Notifications.contact_us(@contact_form).deliver
            redirect_to new_path, :notice => "Email sent, well'contact_us get back to you"
        else
            render :new
        end
    end
end