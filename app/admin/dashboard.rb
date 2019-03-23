ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      
      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
          para "Navigate through those articles to Modify them or create new."
        end
      end
    end
     
    columns do  
      column do
       panel "Recent users Created" do
        table_for User.order('id desc').limit(5).each do |user|
          column (:id) {|user| link_to(user.id, admin_user_path(user)) }
          column :name
          column "User" do |user|
             link_to image_tag(user.image.url, :class => "thumb")
          end
          column :updated_at
        end # table
       end # panel
      end # column
      
      column do
       panel "Recent Best Teachers Created" do
        table_for Besteacher.order('id desc').limit(5).each do |besteacher|
          column (:id) {|besteacher| link_to(besteacher.id, admin_besteacher_path(besteacher)) }
          column :name
          column "Best Teacher" do |besteacher|
             link_to image_tag(besteacher.image.url, :class => "thumb")
          end
          column :updated_at
        end # table
       end # panel
      end # column
    end


    columns do
      
      column do
       panel "Recent Article Created" do
        table_for Article.order('id desc').limit(5).each do |article|
          column (:id) {|article| link_to(article.id, admin_article_path(article)) }
          column :title
          
          column "Article" do |article|
            link_to image_tag(article.image.url, :class => "thumb")
          end
          column :updated_at, header: "Last Updated", align: :center
        end # table
       end # panel
      end # column
      
      column do
       panel "Recent Post Created" do
        table_for Post.order('id desc').limit(5).each do |post|
          column (:id) {|post| link_to(post.id, admin_post_path(post)) }
          column :title
          column "Post" do |post|
             link_to image_tag(post.image.url, :class => "thumb")
          end
          column :updated_at
        end # table
       end # panel
      end # column
      
      column do
       panel "Recent Best Performer Created" do
        table_for Performer.order('id desc').limit(5).each do |performer|
          column (:id) {|performer| link_to(performer.id, admin_performer_path(performer)) }
          column :title
          column "Performer" do |performer|
             link_to image_tag(performer.image.url, :class => "thumb")
          end
          column :updated_at
        end # table
       end # panel
      end # column
    end


   columns do
     
     column do
       panel "Recent Publication Created" do
        table_for Publication.order('id desc').limit(5).each do |publication|
          column (:id) {|publication| link_to(publication.id, admin_publication_path(publication)) }
          column :title
          column "Publication" do |publication|
             link_to image_tag(publication.image.url, :class => "thumb")
          end
          column :updated_at
        end # table
       end # panel
      end # column
     
      column do
       panel "Recent Created Staffs" do
        table_for Staff.order('id desc').limit(5).each do |staff|
          column (:id) {|staff| link_to(staff.id, admin_staff_path(staff)) }
          column :name
          column "Staff" do |staff|
             link_to image_tag(staff.image.url, :class => "thumb")
          end
          column :updated_at
        end # table
       end # panel
      end # column
    
      column do
       panel "Recent Teachers Created" do
        table_for Teacher.order('id desc').limit(5).each do |teacher|
          column (:id) {|teacher| link_to(teacher.id, admin_teacher_path(teacher)) }
          column :name
          column "Teacher" do |teacher|
             
          end
          column :updated_at
        end # table
       end # panel
      end # column
    end
    
  end # content

end
