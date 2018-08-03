Pod::Spec.new do |s|
  s.name             = 'MRJInputView'
  s.version          = '0.1.2.11'
  s.summary          = '文本多样性输入框'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/mrjlovetian/MRJInputView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mrjlovetian@gmail.com' => 'mrjlovetian@gmail.com' }
  s.source           = { :git => 'https://github.com/mrjlovetian/MRJInputView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'MRJInputView/Classes/**/*'
  
   s.resource_bundles = {
     'MRJInputView' => ['MRJInputView/Assets/*.png']
   }

    s.dependency 'MRJTool'
    s.dependency 'UIViewMRJFrame'
    s.dependency 'MRJUIColorAdditions'
    s.dependency 'DWTagList'
    s.dependency 'MRJAttributedMarkup'

end
