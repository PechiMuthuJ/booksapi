class BookController < ApplicationController
    def index 
        render json: Buk.all 
    end

    def create 
        for i in 1..5
            puts("")
        end 
        a = pa
        book = Buk.new(title:a[:Title], author:a[:Author])
        if(book.save)
            render json: book, status: 201
        else 
            render json: book.errors, status: 422
        end
    end

    def destroy
        a = 0
        begin 
            Buk.find(params[:id]).destroy!
            a = 1
        rescue
            render json:{}, status:422
        end
        if(a==1)
            render json:{}, status:201
        end
    end 

    def pa 
        params.permit(:Title,:Author)
    end 

end
