 # namespace :todo do
 #   desc "Delete items older than seven days"
 #   task delete_items: :production do
 #     Item.where("created_at <= ?", Time.now - 7.days).destroy_all
 #     # command "echo 'you can use raw cron syntax too'"
 #   end

 # end