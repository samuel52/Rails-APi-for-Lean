class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body #:owner

  # def owner
  #   {owner_id: self.object.person.id, 
  #    owner_name: self.object.person.name}
  # end 
end
