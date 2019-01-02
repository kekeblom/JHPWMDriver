from distutils.core import setup, Extension

extension_mod = Extension("JHPWMDriver_wrap",
        ["src/JHPWMDriver_wrap.cxx", "src/JHPWMPCA9685.cpp"],
        language='c++',
        extra_compile_args=['-std=c++11', '-v'])

setup(name = "PWMDriver", ext_modules=[extension_mod])
