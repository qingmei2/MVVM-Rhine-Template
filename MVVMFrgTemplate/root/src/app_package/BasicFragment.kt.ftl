package ${kotlinEscapedPackageName}

import org.kodein.di.Kodein
import org.kodein.di.generic.instance
<#if applicationPackage??>
import com.qingmei2.rhine.base.view.fragment.BaseFragment
import ${applicationPackage}.R
import ${applicationPackage}.databinding.${fragmentBindingClass}
</#if>

class ${className} : BaseFragment<${fragmentBindingClass}>() {

    override val kodein: Kodein = Kodein.lazy {
        extend(parentKodein)
        import(${kodeinModuleName})
    }

    val viewModel: ${viewModelClass} by instance()

    override val layoutId: Int = R.layout.${fragment_layout}

    companion object {

        fun instance(): ${className} = ${className}()
    }
}