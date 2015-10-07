ActiveAdmin::Dashboards.build do  

  

         
      section "Recent Events" do  
        table_for Event.order("topic desc").limit(5) do  
          column :name do |event|  
            link_to event.topic, admin_event_path(event)  
          end  
          column :date  
        end  
        strong { link_to "View All Events", admin_events_path }  
      
      end 

    end  

