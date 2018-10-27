module Api
	module V1
		class PeopleController < ApplicationController

			# see everybody 
			def index
				render json: Person.all
			end

			# sow details of people created
			def show
				render json: Person.find(params[:id])
			end

			# create new people
			def create
				person = Person.new(person_params)

				if person.save
					# TestMailer.person_created(@people).deliver
					render json: {data:person},status: :ok
				else
					render json: {status: "ERROR", message: "Not Saved", data:person.error},status: :unprocessable_entity
				end
			end

			# private parameters
			private

			def person_params
				params.permit(:name)
			end

		end
	end
end