# encoding: utf-8
class PostsController < ApplicationController
  # GET /posts
  # GET /posts.xml
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
    # 增加底下兩行不知是幹啥的
    @board = Board.find(params[:board_id])
    redirect_to board_path(@board)    
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    # 註解掉 @post = Post.find(params[:id])
    @board = Board.find(params[:board_id]) #加這兩行
    @post = @board.posts.find(params[:id]) #加來幹啥的?


    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
   # 註解掉  @post = Post.new
    #再加上底下那兩行
    @board = Board.find(params[:board_id])
    @post = @board.posts.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/1/edit
  def edit
    # 註解掉 @post = Post.find(params[:id])
    #再加上底下那兩行
    @board = Board.find(params[:board_id])
    @post = @board.posts.find(params[:id])

  end

  # POST /posts
  # POST /posts.xml
  def create
    #註解掉@post = Post.new(params[:post])
    #再加上底下那兩行
    @board = Board.find(params[:board_id])
    @post = @board.posts.build(params[:post])


    respond_to do |format|
      if @post.save
        #註解掉 format.html { redirect_to(@post, :notice => 'Post was successfully created.') }        
        #再加上底下那兩行
        format.html { redirect_to(board_post_path(@board,@post),
            :notice => 'Post was successfully created.') }    
        format.xml  { render :xml => @post, :status => :created, :location => @post }

      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    @post = Post.find(params[:id])
    #再加上底下那兩行
    @board = Board.find(params[:board_id])
    @post = @board.posts.find(params[:id])


    respond_to do |format|
      if @post.update_attributes(params[:post])
       #註解掉 format.html { redirect_to(@post, :notice => 'Post was successfully updated.') }
       #再加上底下那兩行
        format.html { redirect_to(board_post_path(@board,@post),
            :notice => 'Post was successfully updated.') }
        format.xml  { head :ok }        
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    # 註解掉 @post = Post.find(params[:id])
    #再加上底下那兩行
    @board = Board.find(params[:board_id])
    @post = @board.posts.find(params[:id])
    @post.destroy

    respond_to do |format|
      # 註解掉 format.html { redirect_to(posts_url) }
      format.html { redirect_to (board_posts_path(@board, @post)) }
      format.xml  { head :ok }
    end
  end
end