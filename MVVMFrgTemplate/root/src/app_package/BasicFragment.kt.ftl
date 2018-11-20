package ${kotlinEscapedPackageName}

import org.kodein.di.Kodein
import org.kodein.di.generic.instance
<#if applicationPackage??>
import com.qingmei2.rhine.base.view.BaseFragment
import ${applicationPackage}.R
import ${applicationPackage}.databinding.${fragmentBindingClass}
</#if>

class ${className} : BaseFragment<${fragmentBindingClass}, ${viewDelegateClass}>() {

    override val kodein: Kodein = Kodein.lazy {
        extend(parentKodein)
        import(${kodeinModuleName})
    }

    override val viewDelegate: ${viewDelegateClass} by instance()

    override val layoutId: Int = R.layout.${fragment_layout}

    override fun initView() {
        binding.delegate = viewDelegate
    }

    companion object {

        fun instance(): ${className} =
                ${className}()
    }
}