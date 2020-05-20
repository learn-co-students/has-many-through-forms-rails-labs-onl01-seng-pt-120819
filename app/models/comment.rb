class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }


  # def empty

  # end
end


# <%= form_for @post do |f| %>
#   <%= f.collection_select :person_id, Author.all, :id, :name_with_initial, prompt: true %>
#   <%= f.submit %>
# <% end %>