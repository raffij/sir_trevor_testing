use Rack::Static,
  :urls => ["/images", "/javascript", "/stylesheets"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/blank.html', File::RDONLY)
  ]
}