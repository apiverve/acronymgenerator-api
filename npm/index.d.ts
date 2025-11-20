declare module '@apiverve/acronymgenerator' {
  export interface acronymgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface acronymgeneratorResponse {
    status: string;
    error: string | null;
    data: any;
    code?: number;
  }

  export default class acronymgeneratorWrapper {
    constructor(options: acronymgeneratorOptions);

    execute(callback: (error: any, data: acronymgeneratorResponse | null) => void): Promise<acronymgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: acronymgeneratorResponse | null) => void): Promise<acronymgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<acronymgeneratorResponse>;
  }
}
