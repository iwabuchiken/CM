class WorkMemosController < ApplicationController
  # GET /work_memos
  # GET /work_memos.json
  def index
    @work_memos = WorkMemo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @work_memos }
    end
  end

  # GET /work_memos/1
  # GET /work_memos/1.json
  def show
    @work_memo = WorkMemo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work_memo }
    end
  end

  # GET /work_memos/new
  # GET /work_memos/new.json
  def new
    @work_memo = WorkMemo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @work_memo }
    end
  end

  # GET /work_memos/1/edit
  def edit
    @work_memo = WorkMemo.find(params[:id])
  end

  # POST /work_memos
  # POST /work_memos.json
  def create
    @work_memo = WorkMemo.new(params[:work_memo])

    respond_to do |format|
      if @work_memo.save
        format.html { redirect_to @work_memo, notice: 'Work memo was successfully created.' }
        format.json { render json: @work_memo, status: :created, location: @work_memo }
      else
        format.html { render action: "new" }
        format.json { render json: @work_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /work_memos/1
  # PUT /work_memos/1.json
  def update
    @work_memo = WorkMemo.find(params[:id])

    respond_to do |format|
      if @work_memo.update_attributes(params[:work_memo])
        format.html { redirect_to @work_memo, notice: 'Work memo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @work_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_memos/1
  # DELETE /work_memos/1.json
  def destroy
    @work_memo = WorkMemo.find(params[:id])
    @work_memo.destroy

    respond_to do |format|
      format.html { redirect_to work_memos_url }
      format.json { head :no_content }
    end
  end
end
