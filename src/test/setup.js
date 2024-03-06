import '@testing-library/jest-dom';

describe('Environment Variables', () => {
    it('should have REACT_APP_API_URL set', () => {
      // Access the environment variable using process.env
      const accessToken = process.env.REACT_APP_ACCESS_TOKEN;
  
      // Expect apiUrl to be truthy, meaning it should not be undefined, null, or an empty string
      expect(accessToken).toBeTruthy();
    });
  });
  