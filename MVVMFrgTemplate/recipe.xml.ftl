<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <instantiate from="root/res/layout/fragment.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragment_layout}.xml" />

    <instantiate from="root/src/app_package/RhineFragment.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/RhineFragmentViewModel.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewModelClass}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/RhineFragmentViewDelegate.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewDelegateClass}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/RhineFragmentKodeinModule.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}KodeinModule.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />
</recipe>
