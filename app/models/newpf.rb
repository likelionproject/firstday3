class Newpf < ActiveRecord::Base
        mount_uploader :pf_image, S3uploaderUploader
end
