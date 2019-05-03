<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <instantiate from="root/res/layout/activity.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/${activity_layout}.xml" />

    <instantiate from="root/src/app_package/BasicActivity.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

    <instantiate from="root/src/app_package/BasicActivityViewModel.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewModelClass}.kt" />

<#if generateKodeinModule>
    <instantiate from="root/src/app_package/BasicActivityKodeinModule.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}KodeinModule.kt" />
</#if>
<#if generateDataSource>
    <instantiate from="root/src/app_package/BasicRepository.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}Repository.kt" />
</#if>

    <open file="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />
</recipe>
