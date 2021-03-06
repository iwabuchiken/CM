class MusicsController < ApplicationController
  # GET /musics
  # GET /musics.json
  def index
    @musics = Music.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @musics }
    end
  end

  # GET /musics/1
  # GET /musics/1.json
  def show
    @music = Music.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @music }
    end
  end

  # GET /musics/new
  # GET /musics/new.json
  def new
    @music = Music.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @music }
    end
  end

  # GET /musics/1/edit
  def edit
    @music = Music.find(params[:id])
  end

  # POST /musics
  # POST /musics.json
  def create
    @music = Music.new(params[:music])

    respond_to do |format|
      if @music.save
        format.html { redirect_to @music, notice: 'Music was successfully created.' }
        format.json { render json: @music, status: :created, location: @music }
      else
        format.html { render action: "new" }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /musics/1
  # PUT /musics/1.json
  def update
    @music = Music.find(params[:id])

    respond_to do |format|
      if @music.update_attributes(params[:music])
        format.html { redirect_to @music, notice: 'Music was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musics/1
  # DELETE /musics/1.json
  def destroy
    @music = Music.find(params[:id])
    @music.destroy

    respond_to do |format|
      format.html { redirect_to musics_url }
      format.json { head :no_content }
    end
  end

  def test1_post
      data = params[:test_data]
      
      @music = Music.new
      
      @music.file_name = data
      
      
      
      if data != nil and @music.save
        
        render text: data + " => OK"
        
      else
        
        render text: "Not OK"
        
      end
    
  end#def test1_post

  def test2_post_json
      data = params[:test_json][:file_name]
      
      file_path = params[:test_json][:file_path]
      
      @music = Music.new
      
      @music.file_name = data
      
      if file_path != nil
        @music.file_path = file_path
      end
      
      if data != nil and @music.save
        
        render text: data + " => OK"
        
      else
        
        render text: "Not OK"
        
      end
    
  end#def test2_post_json

  def test3_post_json
      
      data = params[:test_json]
      
      # if data != nil
      if data == nil
          render text: "No data"
          
          return
      end
      
      # Flag
      result = true
      
      # begin
          # Save data
          data.each do |item|
              file_name = item[:file_name]
              file_path = item[:file_path]
              
              @music = Music.new
              
              @music.file_name = file_name
              @music.file_path = file_path
              
              if !@music.save
                 if result == true
                    result = false
                 end 
              end
              
          end#data.each do |item|
      # rescue
#         
          # render text: "Exception!"
#           
          # return
#           
      # end#begin
      
      
      
      # Return
      if result == true
          render text: "OK"
      else
          render text: "Not OK"
      end
      
      
          # data = params[:test_json][:file_name]
#           
          # file_path = params[:test_json][:file_path]
#           
          # @music = Music.new
#           
          # @music.file_name = data
#           
          # if file_path != nil
            # @music.file_path = file_path
          # end
#           
          # if data != nil and @music.save
#             
            # render text: data + " => OK"
#             
          # else
#             
            # render text: "Not OK"
#             
          # end
    
  end#def test3_post_json

end
