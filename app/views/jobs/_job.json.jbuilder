json.extract! job, :id, :title, :content, :price, :zipcode, :created_at, :updated_at
json.url job_url(job, format: :json)