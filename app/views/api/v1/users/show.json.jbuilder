json.user @user, :id, :open_id
json.services @user.services, :id, :title, :category, :description, :time, :location
json.bookings @user.bookings, :id, :user_id, :service_id
