class StaticController < ApplicationController
	def home

		@projects = Project.all

		render 'home'
	end

	def delivery_and_pay
		@text_delivery_and_pay = SiteVariable.where(place: "page_delivery_pay")
		render 'delivery_and_pay'
	end

	def contacts
		@text_contacts = SiteVariable.where(place: "page_contact")
		render 'contacts'
	end
end
