class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :posts
  def posts 
    self.object.posts.map do |post|
      {id: post.id,
       title: post.title,
       body: post.body}
    end 
  end

  
end
