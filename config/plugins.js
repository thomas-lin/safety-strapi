module.exports = () => ({
  'transformer': {
    enabled: true,
    config: {
      responseTransforms: {
        removeAttributesKey: true,
      },
    }
  },
});
