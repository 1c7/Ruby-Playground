require 'qiniu'

# 构建鉴权对象
Qiniu.establish_connection! :access_key => 'lJdEpM6JC6xiIuGGujkjePJubBfR2n6pyWO4Nwxk',
                            :secret_key => 'EFtuFx7qlqyYGiGKyBmpYSqLVLrHojuFAun_Nc7Z'

#要上传的空间
bucket = 'herego'

#上传到七牛后保存的文件名
key = 'tt.jpg'


#构建上传策略
put_policy = Qiniu::Auth::PutPolicy.new(
    bucket,      # 存储空间
    key,     # 最终资源名，可省略，即缺省为“创建”语义，设置为nil为普通上传
    3600    #token过期时间，默认为3600s
)

#生成上传 Token
uptoken = Qiniu::Auth.generate_uptoken(put_policy)
p uptoken

#要上传文件的本地路径
filePath = './Tesla.jpg'

#调用upload_with_token_2方法上传
# code, result, response_headers = Qiniu::Storage.upload_with_token_2(
#      uptoken,
#      filePath,
#      key,
#      nil,
#      :bucket => bucket
# )

#打印上传返回的信息
# puts code
# puts result
