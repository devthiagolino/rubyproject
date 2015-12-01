class Contact < ActiveRecord::Base
	validates_presence_of :description, :nome, :email
	validates_numericality_of :phone
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
end
