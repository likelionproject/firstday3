class CultureController < ApplicationController
    def outputsave
    hello = Newpf.new
    hello.performancename = params[:performancename]
    hello.briefaddress = params[:briefaddress]
    hello.performancenameinfo = params[:performancenameinfo]
    hello.my_image = params[:imageup]
    
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

end
