declare module '@apiverve/acronymgenerator' {
  export interface acronymgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface acronymgeneratorResponse {
    status: string;
    error: string | null;
    data: AcronymGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AcronymGeneratorData {
      text:     null | string;
      acronyms: (null | string)[];
  }

  export default class acronymgeneratorWrapper {
    constructor(options: acronymgeneratorOptions);

    execute(callback: (error: any, data: acronymgeneratorResponse | null) => void): Promise<acronymgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: acronymgeneratorResponse | null) => void): Promise<acronymgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<acronymgeneratorResponse>;
  }
}
