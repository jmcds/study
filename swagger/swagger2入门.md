 OpenAPI的前身是swagger规范。Swagger是一套有助于前后端分离，接口管理和测试工具集。

 CSDN 上wjc133作者翻译,相对挺详细介绍 [入门参考](https://blog.csdn.net/wjc133/article/details/65436778)

 现在流行常用的就是swagger2.0版本

  生产环境查看地址
[REST-API编辑工具(Swagger Editor)](http://swagger.cloudchain.cn/)、[REST-API查看工具(Swagger UI)](http://swagger.cloudchain.cn/static/)

```yaml
tags:
  - name: user
    description: Operations about user
    externalDocs:
      description: Find out more about our store
      url: 'http://dev.cloudchain.com'
  - name: organize
    description: 企业备案
    externalDocs:
      description: Find out more
      url: 'http://dev.cloudchain.com'
  - name: product
    description: 产品备案
```
  上述`tags`是定义标签(tags)的地方, 页面显示类似于分组的概念。 这里定义的标签会在下面paths中引用，如下面引用了user标签：
```yaml
paths:
  /qc/cloudchain/user:
    post:
      tags:
        - user

```
同一标签下API, 页面显示会在一起.

Parameter对象

 用于描述单一操作的属性。  一个唯一的属性将通过name和location定位。
in 参数位置 咱们现在使用的`Body`
如果in的值为body：schema必填
这是一个引用，引用后面定义的schema。schema定义了API的输入（请求）或输出（响应）参数。定义schema是为了复用，即在多个API引用同一个schema。
```yaml
parameters:
 - in: body
   name: body
   description: (描述)
   required: true
   schema:
    $ref: '#/definitions/User'
```
schema本身（如上面的`#/definitions/User`）在`definitions`中定义。

definitions
```yaml
definitions:
  User:
    type: object
    properties:
      INF_TYPE:
        type: string
      PHONE:
        type: string
      PASSWORD:
        type: string
```
上述定义对应了输入参数：
```
{"INF_TYPE":"getToken","PHONE":"登录手机号","PASSWORD":"加密后密码"}
```

responses 对象
> 操作预期结果的容器。该容器将HTTP响应码映射到预期响应。你不必在文档中覆盖所有可能的HTTP响应代码，因为它们可能事先是不可预知的。然而，文档应该包含成功操作的响应以及各种已知的错误。
```yaml
      responses:
        '200':
          description: successful operation
          schema:
            $ref: '#/definitions/Pet'
        '400':
          description: Invalid ID supplied
        '404':
          description: Pet not found
```
质量链网API的返回值几乎都是json对象，所以都可以按上述方案描述。schema也是定义在`definitions`中。
