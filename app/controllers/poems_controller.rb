class PoemsController < ApplicationController
  def index
    @poems = Poem.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @poem = Poem.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @poem = Poem.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @poem = Poem.find(params[:id])
  end

  def create
    @poem = Poem.new(params[:poem])

    respond_to do |format|
      if @poem.save
        format.html { redirect_to @poem, notice: 'Poem was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @poem = Poem.find(params[:id])

    respond_to do |format|
      if @poem.update_attributes(params[:poem])
        format.html { redirect_to @poem, notice: 'Poem was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @poem = Poem.find(params[:id])
    @poem.destroy

    respond_to do |format|
      format.html { redirect_to poems_url }
    end
  end
end
