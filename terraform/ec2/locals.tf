# Strip extra information from the caller_identity to grab username
locals {
  extracted_user = regexall(":(.*?)@", data.aws_caller_identity.current.user_id)[0][0]
}
