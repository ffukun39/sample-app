class MemosController < ApplicationController
  def index
    #topページが呼ばれたときに動作するアクション
    @memos = Memo.all

  end

  def new
    #新規作成ページが呼ばれたときに動作するアクション
    @categories = Category.all
  end

  def create
    #新しいメモがpostされたときに動作するアクション

    Memo.create(title:params["memos"]["title"],body:params["memos"]["body"],category_id:params["memos"]["category_id"])
    redirect_to "/"

  end

  def destroy
    memo = Memo.find(params["id"])
    memo.destroy
    redirect_to "/"
  end

  def edit
    @memo = Memo.find(params["id"])
    @categories = Category.all
  end

  def update
    memo = Memo.find(params["id"])
    memo.title = params["memos"]["title"]
    memo.title = params["memos"]["title"]
    memo.save
    redirect_to "/"
  end
end


