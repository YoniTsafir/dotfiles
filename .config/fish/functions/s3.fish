function s3
    aws s3 cp (string replace "https://joytunes-dev.s3.amazonaws.com" "s3://joytunes-dev" "$argv") .
end
