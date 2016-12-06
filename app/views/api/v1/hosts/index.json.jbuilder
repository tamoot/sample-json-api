json.set! :hosts do
   json.array! @hosts, partial: 'api/v1/hosts/host', as: :host
end
