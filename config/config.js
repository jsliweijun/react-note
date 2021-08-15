// 主页配置
const config = {
  mode: 'site',
  title: 'React note',
  description: 'React 知识笔记',
  publicPath: '/react-note/',
  base: '/react-note/',
  logo: './react.png',
  favicon: './favicon.ico',
  exportStatic: {},
  dynamicImport: {},
  theme: {
    '@primary-color': '#00A7D6',
  },
  navs: [
    null,
    {
      title: 'Github',
      path: '',
    },
  ],
};

if (process.env.NODE_ENV !== 'development') {
  config.ssr = {};
}

export default config;
