class GroupsController < ApplicationController

  def new
  end

  def create
    Group.create.group_paramus(:name)
  end

  def edit
  end

  def update
    if user.Gropu.name == group.name
      Group.update(group_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def group_params
    params.require(:group).permit(:name)
  end
end
