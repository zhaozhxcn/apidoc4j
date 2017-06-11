<#list classCommentList as classComment>
#### ${classComment.comment!""}
<#list classComment.methodCommentList as methodComment>
${methodComment.comment!""}
请求方式：${methodComment.requestMethod}

参数：

```
{
<#list methodComment.methodArgumentCommentList as argumentComment>
    <#list argumentComment.fieldCommentList as fieldComment>
    "${fieldComment.name!""}":${fieldComment.typeName}<#if (fieldComment_has_next)>,</#if>//${fieldComment.comment!""}
    </#list>
</#list>
}
```

返回值：

```
{
<#list methodComment.methodReturnComment.fieldCommentList as fieldComment>
    "${fieldComment.name!""}":${fieldComment.typeName}<#if (fieldComment_has_next)>,</#if>//${fieldComment.comment!""}
</#list>
}
```
</#list>
</#list>