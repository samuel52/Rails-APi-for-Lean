class TestMailer < ActionMailer::Base	

	def person_created(person)
		@person = person
		@name = person.name
		mail(to: "samuelsadiq52@gmail.com",
			from: "chat@juvenisspa.com",
			subject: "Peron Created"
			
				)
	end
end