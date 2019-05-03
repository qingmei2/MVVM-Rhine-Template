<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <instantiate from="root/src/app_package/BasicFragment.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

    <instantiate from="root/res/layout/fragment.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragment_layout}.xml" />

    <instantiate from="root/src/app_package/BasicFragmentViewModel.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewModelClass}.kt" />

<#if generateKodeinModule>
    <instantiate from="root/src/app_package/BasicFragmentKodeinModule.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}KodeinModule.kt" />
</#if>

<#if generateDataSource>
    <instantiate from="root/src/app_package/BasicRepository.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}Repository.kt" />
</#if>

    <open file="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />
</recipe>
