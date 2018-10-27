class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :authentication_token, :accounts, :posts
  
  def posts 
    self.object.posts.map do |post|
      {id: post.id,
       title: post.title,
       body: post.body}
    end 
  end
  def accounts 
    self.object.accounts.map do |account|
      {id: account.id,
       name: account.name,
       slug: account.slug}
    end 
  end

end
