class Plan < ActiveRecord::Base
	has_many :subscriptions

	include Koudoku::Plan
	
	def self.from_stripe!
		delete_all

		Stripe::Plan.all.data.each do |plan|
			attrs = plan.to_hash.select{|k,v| Plan.attribute_names.include? k.to_s}
			attrs[:stripe_id] = attrs.delete :id

			create attrs
		end
	end
	
end
