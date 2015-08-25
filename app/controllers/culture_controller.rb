class CultureController < ApplicationController
    # main page
    def index 
        if user_signed_in? 
           #yes
           @user_type = current_user.typenum # 0 => viewer, 1 => performer
        end
    end
    
    def enroll_result
       
       @subject = params[:subject]
       @user_name = params[:user_name]
       @datepicker = params[:datepicker]
       @lat = params[:lat]
       @lng = params[:lng]
     
    end
    
    def outputsave
    hello = Newpf.new
    hello.pf_title = params[:pf_title]
    hello.pf_add_br = params[:pf_add_br]
    hello.pf_infor = params[:pf_infor]
    hello.pf_add_lat = params[:pf_add_lat]
    hello.pf_add_lng = params[:pf_add_lng]
    hello.pf_image = params[:pf_image]
    hello.pf_date = params[:dt_due]
    hello.pf_time = params[:pf_time]
    

    
    
    hello.musical = params[:musical]
    hello.play = params[:play]
    hello.concert = params[:concert]
    hello.classic = params[:classic]
    hello.jeonsi = params[:jeonsi]
    hello.sport = params[:sport]
    hello.busking = params[:busking]
    hello.amateur = params[:amateur]
    hello.etc = params[:etc]
    hello.save
    
    redirect_to '/culture/explore'
    
    end

    def explore
        
        @p = Newpf.all
        
    end
    
    def
end
