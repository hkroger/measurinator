# -*- encoding : utf-8 -*-
class StatusesController < ApplicationController
  def index
    statuses = ProcessStatus.all
    is_ok = statuses.all?{ |ps| ps.is_ok? }
    error_statuses = statuses.select{ |ps| !ps.is_ok? }.map{ |ps| ps.process_name }
    if is_ok
       render :plain => "All ok"
    else
       render :plain => "Problem with processes: #{error_statuses.join(", ")}", :status => 500
    end
  end
end
