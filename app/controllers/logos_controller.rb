class LogosController < ApplicationController

def new
	@logo = Logo.new
end

def create
	@logo = Logo.new(params[:logo])
	if @logo.save
		redirect_to logos_url
	else
		render 'new'
	end
end

def index
	@logos = Logo.all
end

def show
	@logo = Logo.find_by_id(params[:id])
end

def destroy
	p = Logo.find_by_id(params[:id])
	p.destroy
	redirect_to logos_url
end

def edit
	@logo = Logo.find_by_id(params[:id])
end

def update
	@logo = Logo.find_by_id(params[:id])
	@logo.url = params[:logo][:url]
	@logo.title = params[:logo][:title]
	if @logo.save
		redirect_to logos_url
	else
		render 'edit'
	end
end
end