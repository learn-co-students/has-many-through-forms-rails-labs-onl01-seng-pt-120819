<%= render 'form', post: Post.new %>

<h2>Add a New Comment</h2>

<%= form_for @post do |f| %>
    <%= f.label 'Comment' %><br>
    <%= f.text_field :comments %><br>

    <%= f.label 'Select User' %><br>
    <%= f.collection_select :user_ids, User.all, :id, :name %>
    <%= f.hidden_field :post_id, value: @post.id %>

    <%= f.submit %>
<% end %>