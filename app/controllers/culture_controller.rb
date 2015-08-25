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
    
    def single          
       
       @pid = Newpf.find(params[:id])
        
    end
    
    def add_update
       
        @pid = Newpf.find(params[:id])
        
    end
    
    def add_update_1
        
        @pid = Newpf.find(params[:id])
        @pid.pf_title = params[:new_pf_title]
        @pid.pf_add_br = params[:new_pf_add_br]
        @pid.pf_infor = params[:new_pf_infor]
        @pid.pf_image = params[:new_pf_image]
        @pid.pf_date = params[:new_dt_due]
        @pid.pf_time = params[:new_pf_time]
        @pid.musical = params[:new_musical]
        @pid.play = params[:new_play]
        @pid.concert = params[:new_concert]
        @pid.classic = params[:new_classic]
        @pid.jeonsi = params[:new_jeonsi]
        @pid.sport = params[:new_sport]
        @pid.busking = params[:new_busking]
        @pid.amateur = params[:new_amateur]
        @pid.etc = params[:new_etc]
        @pid.save
        
        redirect_to '/culture/single/' + @pid.id.to_s
            
    end
    
    def delete
        
        @pid = Newpf.find(params[:id])
        
        @pid.destroy
        
        redirect_to '/culture/explore'
        
    end
end
